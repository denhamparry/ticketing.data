#!/bin/bash
prepop_func(){
  sleep 5
  mongo --eval 'mongo'
  mongo --eval 'use TicketingDb'
  mongo --eval 'db.createCollection("Tickets")'
  mongo --eval 'db.Tickets.insertMany([{"Name":"Ellie","Browser":"Safari","Category":"Talk","Speaker":"Lewis Denham-Parry"}, {"Name":"Laurie","Browser":"Chrome","Category":"Talk","Speaker":"Lewis Denham-Parry"}])'
  mongo --eval 'db.Tickets.find({}).pretty()'
}

prepop_func $i & mongod