const db = require("../db")

const { BadRequestError, NotFoundError } = require("../utils/errors")

class Profile {
    static async editProfile({ profileUpdate, userId }){
        const results = await db.query(
            `
            UPDATE users
            SET profile_picture = $1,
                city = $3,
                state = $4
            WHERE user_id = $2
            RETURNING user_id AS "userID",
                      profile_picture AS "profilePicture",
                      city AS "City",
                      state AS "State"
            `,
                [profileUpdate.profile_picture, userId, profileUpdate.city, profileUpdate.state]
        )

        return results.rows[0]
    }
}

module.exports = Profile