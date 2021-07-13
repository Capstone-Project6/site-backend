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

static async createEvent({ event, user }){
    const requiredFields = ['event_name', 'event_organizer', 'venue', 'description', 'event_image', 'start_date', 'end_date']
    requiredFields.forEach(field => {
        if (!event.hasOwnProperty(field)){
            throw new BadRequestError(`Required field - ${field} - missing from request body.`)
            }
        })
    const results = await db.query(
        `
        INSERT INTO event (event_name, event_organizer, venue, description, event_image, start_date, end_date)
        VALUES($1, $2, $3, $4, $5, $6, (SELECT id FROM event WHERE id = $7))
        Returning id,
                  event_name AS "eventName",
                  event_organizer AS "eventOrganizer",
                  venue AS "venue",
                  description AS "description",
                  event_image AS "eventImage",
                  start_date AS "startDate,
                  end_date AS "endDate"
        
        `, [event.event_name, event.event_organizer, event.venue, event.description, event.event_image, event.start_date, event.end_date] 
        )
    return results.rows[0] 
    }
}



module.exports = Event