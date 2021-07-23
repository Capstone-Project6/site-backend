const express = require("express")
const Profile = require("../models/profile")
const security = require("../middleware/security")
const router = express.Router()

router.patch("/:userId", security.requireAuthenticatedUser, async (req, res, next) => {
    try {
        // update a user profile
        const { userId } = req.params
        const profile = await Profile.editProfile({ profileUpdate: req.body, userId})
        return res.status(200).json( { profile })
        } catch(err) {
            next(err)
        }
})

router.post("/organizer-profile", async (req, res, next) => {
    try {
        // create an event organizer profile
        } catch(err) {
            next(err)
        }
})

router.put("/organizer-profile", async (req, res, next) => {
    try {
        // update an event organizer profile
        } catch(err) {
            next(err)
        }
})

router.delete("/organizer-profile", async (req, res, next) => {
    try {
        // delete an event organizer profile
        } catch(err) {
            next(err)
        }
})

router.post("/user-profile", async (req, res, next) => {
    try {
        // create a user profile
        } catch(err) {
            next(err)
        }
})


router.delete("/user-profile", async (req, res, next) => {
    try {
        // delete a user profile
        } catch(err) {
            next(err)
        }
})

module.exports = router