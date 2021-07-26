const bcrypt = require("bcrypt")
const { BCRYPT_WORK_FACTOR } = require("../config")
const db = require("../db")
const { BadRequestError, UnauthorizedError } = require("../utils/errors")

class User {
  static makePublicUser(user) {
    return {
      id: user.id,
      email: user.email,
      first_name: user.first_name,
      last_name: user.last_name,
      city: user.city,
      state: user.state,
      profile_picture: user.profile_picture
    }
  }

  static async login(credentials) {
    const requiredFields = ["email", "password"]
    requiredFields.forEach((property) => {
      if (!credentials.hasOwnProperty(property)) {
        throw new BadRequestError(`Missing ${property} in request body.`)
      }
    })

    const user = await User.fetchUserByEmail(credentials.email)
    if (user) {
      const isValid = await bcrypt.compare(credentials.password, user.password)
      console.log(user, isValid)
      if (isValid) {
        return User.makePublicUser(user)
      }
    }

    throw new UnauthorizedError("Invalid email/password")
  }

  static async register(credentials) {
    const requiredFields = ["email", "password", "first_name", "last_name"]
    requiredFields.forEach((property) => {
      if (!credentials.hasOwnProperty(property)) {
        throw new BadRequestError(`Missing ${property} in request body.`)
      }
    })

    if (credentials.email.indexOf("@") <= 0) {
      throw new BadRequestError("Invalid email.")
    }

    const existingUser = await User.fetchUserByEmail(credentials.email)
    if (existingUser) {
      throw new BadRequestError(`A user already exists with email: ${credentials.email}`)
    }


    const hashedPassword = await bcrypt.hash(credentials.password, BCRYPT_WORK_FACTOR)
    const normalizedEmail = credentials.email.toLowerCase()

    const userResult = await db.query(
      `INSERT INTO users (email, password, first_name, last_name)
       VALUES ($1, $2, $3, $4)
       RETURNING user_id, email, first_name, last_name;
      `,
      [normalizedEmail, hashedPassword, credentials.first_name, credentials.last_name]
    ) 
    const user = userResult.rows[0]

    return User.makePublicUser(user)
  }

  static async fetchUserByEmail(email) {
    if (!email) {
      throw new BadRequestError("No email provided")
    }

    const query = `SELECT * FROM users WHERE email = $1`

    const result = await db.query(query, [email.toLowerCase()])

    const user = result.rows[0]

    return user
  }

}

module.exports = User
