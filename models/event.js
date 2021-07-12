const db = require("../db")
const { BadRequestError, NotFoundError } = require("../utils/errors")

class Event {
    static async listEvents(){
        const results = await db.query(
            `
            SELECT e.id,
                   e.event_name AS "event_name"
                   e.event_organizer AS "event_organizer",
                   e.event_id AS "event_id",
                   e.venue AS "venue"
            FROM event AS e
            `
        )
        return results.rows
}
}



module.exports = Event