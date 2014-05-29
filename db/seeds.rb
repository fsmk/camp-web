VolunteerQuestion.delete_all
VolunteerQuestion.create(question: "Why interested in Free Software?", qtype: "text")
VolunteerQuestion.create(question: "Why interested in Free Software movement and wants to volunteer for the camp?", qtype: "text")
VolunteerQuestion.create(question: "How you will be able to best contribute as volunteer?", qtype: "text")
VolunteerQuestion.create(question: "What can we do better this time than last time, if volunteer for previous camp?", qtype: "text")
VolunteerQuestion.create(question: "Expertise in the various technologies to be covered?", qtype: "multi_choice", options: "HTML/CSS,Javascript,MongoDB,Node.js,Cryptography Tools")
VolunteerQuestion.create(question: "Whether available for all 9 days? If not, mention which all days not available.(We will prefer if you will be there for all 9 days)", qtype: "text")
VolunteerQuestion.create(question: "Availability for Pre-camp activities like Mobilization, online campaigning, content preparation, Hacker-Kit preparation. How much hours per week can you dedicate before camp starts?", qtype: "text")
VolunteerQuestion.create(question: "Anything else, you want to mention to volunteer selection team? :)", qtype: "text")