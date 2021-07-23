const db = require("../db")
//The db file needs to be required:

const { BadRequestError, NotFoundError } = require("../utils/errors")

class Event {
    static async listEvents(){
        const results = await db.query(
            `
            SELECT e.event_id AS "Event ID",
                   e.event_name AS "Event Name",
                   e.venue AS "Venue",
                   e.city AS "City",
                   e.state As "State",
                   e.description AS "Description",
                   e.event_image AS "Event Image",
                   e.created_at AS "Created At",
                   e.organizer_id AS "Organizer ID",
                   e.beginning_date AS "Beginning Date",
                   e.end_date AS "Ending Date",
                   e.beginning_time AS "Beginning Time",
                   e.end_time AS "Ending Time"
            FROM events AS e
            GROUP BY e.event_id
            ORDER BY e.created_at DESC
        `)

        return results.rows
    }

    //This is a function for user's to create an event 
    static async createEvent({ event }){
        const requiredFields = ['event_name', 'event_organizer', 'venue', 'description', 'event_image', 'start_date', 'end_date']
        requiredFields.forEach(field => {
            if (!event.hasOwnProperty(field)){
                throw new BadRequestError(`Required field - ${field} - missing from request body.`)
                }
            })
        const results = await db.query(
            `
            INSERT INTO events (event_name, venue, description, event_image,)
            VALUES($1, $2, $3, $4, $5, $6, $7)
            Returning id,
                    event_name AS "eventName",
                    venue AS "venue",
                    description AS "description",
                    event_image AS "eventImage",
            
            `, [event.event_name, event.event_organizer, event.venue, event.description, event.event_image, event.start_date, event.end_date] 
            )
        return results.rows[0] 
    }
}

module.exports = Event