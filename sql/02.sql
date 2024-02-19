/*
 * Find the actor_id of every actor whose first name starts with 'j'.
 * Order the results from low to hi.
 */
 select actor_id from actor where first_name like 'J%' order by actor_id;

