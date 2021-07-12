const Exercise = require("../models/exercise")
const { BadRequestError, ForbiddenError } = require("../utils/errors")

// ensure authenticated user is owner of exercise
// if they aren't, throw an error
// otherwise we're good

const authUserOwnsPost = async (req, res, next) => {
    try {
        const { user } = res.locals 
    }catch(err){
        return next(err)
    }
}

module.exports = {
    authUserOwnsPost
}
