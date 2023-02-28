import { faker } from 'faker-js/faker/locale/fr'

const students = []
const courses = []
const modules = []
const medias = []

const run = () => {
    makeStudents(100)
    makeCourses(10)
    makeModules(50)
    makeMedias(100)
    
}

const makeStudents = (number) => {
    for (let i = 0; i < number; i++) {
        const student = {
            firstName: faker.name.firstName(),
            lastName: faker.name.lastName(),
            email: faker.internet.email(firstName, lastName),
            phoneNumber: faker.phone.number('+33 ## ## ## ## ##'),
            login: faker.internet.userName(lastName, firstName),
            password: faker.internet.password(20)
        }
        students.push(student)
    }
}

const makeCourses = (number) => {
    for (let i = 0; i < number; i++) {
        const course = {
            title: faker.lorem.sentence(3),
            objective: faker.lorem.paragraph(),
            created_at: faker.date.between('2022-01-01T00:00:00.000Z', '2023-02-28T00:00:00.000Z')
        }

        courses.push(course)
    }
}

const makeModules = (number) => {
    for (let i = 0; i < number; i++) {
        const module = {
            name: faker.lorem.sentence(2),
            objective: faker.lorem.paragraph(),
            course_id: randomBetween(1, 10)
        }
        modules.push(module)
    }
}

const makeMedias = (number) => {
    for (let i = 0; i < number; i++) {
        const media = {
            title: faker.lorem.sentence(3),
            summary: faker.lorem.paragraph(),
            duration: faker.random.numeric(3, {
                allowLeadingZeros: false
            }),
            url: faker.internet.url(),
            created_at: faker.date.between('2022-01-01T00:00:00.000Z', '2023-02-28T00:00:00.000Z'),
            typemedia_id: randomBetween(1, 3),
            module_id: randomBetween(1, 50)
        }

        medias.push(media)
    }
}

const randomBetween = (min, max) => {
    return Math.floor(Math.random() * (max - min + 1) + min)    
}