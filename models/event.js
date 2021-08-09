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

    static async listRecommendedEvents({userId}){
        const results = await db.query(
            `
            SELECT e.event_id AS "Event ID",
                   e.event_name AS "Event Name",
                   e.venue AS "Venue",
                   e.city AS "City",
                   e.state As "State",
                   e.category_name AS "categoryName",
                   e.description AS "Description",
                   e.event_image AS "Event Image",
                   e.created_at AS "Created At",
                   e.organizer_id AS "Organizer ID",
                   e.beginning_date AS "Beginning Date",
                   e.end_date AS "Ending Date",
                   e.beginning_time AS "Beginning Time",
                   e.end_time AS "Ending Time"
            FROM events AS e
            JOIN favorites AS f ON e.category_name = f.categories_name  
            WHERE f.user_id = $1
            GROUP BY e.event_id
            ORDER BY e.created_at DESC
        `,
        [userId]
        )
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

    static async addFavorite(interests, {userId}){
        const results = await db.query(
            `
            INSERT INTO favorites 
            VALUES($1, $2, $3)
            RETURNING user_id AS "userId",
             categories_id AS "categoryId",
             categories_name AS "categoryName"
            
             `, [userId, interests.categories_id, interests.categories_name]
        )
        return results.rows[0]
    }

    static async getCategories(){
        const results = await db.query(
            `SELECT c.category_id,
                    c.category_name,
                    c.category_image
            FROM categories as c
            GROUP BY c.category_id
            `
        )
        return results.rows
    }


    static async filterEvents(searchFilters = {}) {
        let query = `
        SELECT e.event_id AS "Event ID",
               e.event_name AS "Event Name",
               e.venue AS "Venue",
               e.city AS "City",
               e.state As "State",
               e.category_name AS "categoryName",
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
        ORDER BY e.created_at DESC`
            let whereExpressions = [];
            let queryValues = [];
    
        const { price, date, location, category } = searchFilters;
    
        if (price) {
          throw new BadRequestError("Min employees cannot be greater than max");
        }
    
        // For each possible search term, add to whereExpressions and queryValues so
        // we can generate the right SQL
    
        if (minEmployees !== undefined) {
          queryValues.push(minEmployees);
          whereExpressions.push(`num_employees >= $${queryValues.length}`);
        }
    
        if (maxEmployees !== undefined) {
          queryValues.push(maxEmployees);
          whereExpressions.push(`num_employees <= $${queryValues.length}`);
        }
    
        if (name) {
          queryValues.push(`%${name}%`);
          whereExpressions.push(`name ILIKE $${queryValues.length}`);
        }
    
        if (whereExpressions.length > 0) {
          query += " WHERE " + whereExpressions.join(" AND ");
        }
    
        // Finalize query and return results
    
        query += " ORDER BY name";
        const companiesRes = await db.query(query, queryValues);
        return companiesRes.rows;
      }
}

module.exports = Event