# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Course.destroy_all
User.destroy_all
Team.destroy_all
Subscription.destroy_all

Course.create(
  title: "CS50 Harvard Introduction of computer science",
  description: "This is CS50x , Harvard University's introduction to the intellectual enterprises of computer science and the art of programming for majors and non-majors alike, with or without prior programming experience. An entry-level course taught by David J. Malan, CS50x teaches students how to think algorithmically and solve problems efficiently. Topics include abstraction, algorithms, data structures, encapsulation, resource management, security, software engineering, and web development. Languages include C, Python, SQL, and JavaScript plus CSS and HTML. Problem sets inspired by real-world domains of biology, cryptography, finance, forensics, and gaming. The on-campus version of CS50x , CS50, is Harvard's largest course. 

Students who earn a satisfactory score on 9 problem sets (i.e., programming assignments) and a final project are eligible for a certificate. This is a self-paced course–you may take CS50x on your own schedule.",
  image_url: "https://online-learning.harvard.edu/sites/default/files/styles/header/public/course/cs50x-original.jpg?itok=Cl52MS32",
  link_to_course: "https://online-learning.harvard.edu/course/cs50-introduction-computer-science?delta=0"
)

Course.create(
  title: "CS50xWeb Programming with Python and JavaScript",
  description: "This course picks up where CS50x leaves off, diving more deeply into the design and implementation of web apps with Python, JavaScript, and SQL using frameworks like Django, React, and Bootstrap. Topics include database design, scalability, security, and user experience. Through hands-on projects, students learn to write and use APIs, create interactive UIs, and leverage cloud services like GitHub and Heroku. By semester’s end, students emerge with knowledge and experience in principles, languages, and tools that empower them to design and deploy applications on the Internet.",
  image_url: "https://res.cloudinary.com/dt1oiz0wg/image/upload/v1631814551/learnroom/Frame_61.png",
  link_to_course: "https://online-learning.harvard.edu/course/cs50s-web-programming-python-and-javascript?delta=0"
)

Course.create(
  title: "Full Stack - University of Helsinki",
  description: "Learn React, Redux, Node.js, MongoDB, GraphQL and TypeScript in one go! This course will introduce you to modern JavaScript-based web development. The main focus is on building single page applications with ReactJS that use REST APIs built with Node.js.",
  image_url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.helsinki.fi%2Fsites%2Fdefault%2Ffiles%2Fstyles%2Fwatermarked_image%2Fpublic%2Fthumbnails%2Fimage%2Ffullstack_en_1184x507.jpg%3Fitok%3DR_Zjux_o&f=1&nofb=1",
  link_to_course: "https://fullstackopen.com/en/"
)

Course.create(
  title: "JS30 - Wes Bos",
  description: "
So, you've done a few courses and read a few books but still don't feel great about your relationship with JavaScript.
How do you get better?
Build things. Lots of things. Build 1,000 things. Keep it up and don't stop. Seriously.
This has always been my advice. Just put in the work and you will get better.
But Wes, what should I build? I have no ideas! Please don't make me do another todo app.
Ideas, Eh? I've got lots! This is JavaScript30 — let's build 30 things together.
",
  image_url: "https://javascript30.com/images/JS3-social-share.png",
  link_to_course: "https://javascript30.com/"
)