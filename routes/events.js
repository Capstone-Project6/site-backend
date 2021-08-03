const express = require("express")
const security = require("../middleware/security")
const Event = require("../models/event")
const router = express.Router()

router.get("/", async (req, res, next) => {
    try {
        // display events on homepage
        const feed = await Event.listEvents()
        return res.status(200).json( {feed} )
    } catch(err) {
        next(err)
    }
})

router.get("/:userId/recommended", security.requireAuthenticatedUser, async (req, res, next) => {
    try {
        const recommendations = await Event.listRecommendedEvents()
        return res.status(200).json( { recommendations })
        } catch(err) {
            next(err)
        }
})

router.post("/create-event", security.requireAuthenticatedUser, async (req, res, next) => {
    try {
        // create an event as an organizer 
        } catch(err) {
            next(err)
        }
})

router.put("/update-event", security.requireAuthenticatedUser, async (req, res, next) => {
    try {
        // update an event as an organizer 
        } catch(err) {
            next(err)
        }
})


router.get("/event-details", async (req, res, next) => {
    try {
        // retrieve event details
        } catch(err) {
            next(err)
        }
})

router.post("/event-register", security.requireAuthenticatedUser, async (req, res, next) => {
    try {
        // register for an event
        } catch(err) {
            next(err)
        }
})

router.get("/search", async (req, res, next) => {
    try {
        // display searched events
        } catch(err) {
            next(err)
        }
})

router.delete("/event", async (req, res, next) => {
    try {
        // delete an event as an organizer
        } catch(err) {
            next(err)
        }
        
})


router.post("/:userId/favorites", async (req, res, next) => {
    const interests = req.body
    const { userId } = req.params
    try {
        const favorites = await Event.addFavorite({ interests, userId })
        return res.status(200).json( { favorites })
        } catch(err) {
            next(err)
        }
})

router.get("/categories", async (req, res, next) => {
    try {
        console.log("categories")
        const categories = await Event.getCategories()
        return res.status(200).json( { categories } )
    } catch(err) {
        next(err)
    }
})








module.exports = router