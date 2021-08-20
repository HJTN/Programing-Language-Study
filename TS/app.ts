let studentID: number = 12345;
let studentName: string = 'HeoJinSu';
let age: number = 21;
let gender: string = 'male';
let subject: string = 'C++, Java, etc';
let courseCompleted: boolean = false;

let student1: student = {
    studentID: 121212,
    studentName: 'Jack',
    age: 28,
    gender: 'male',
    subject: 'Mongo DB',
    courseCompleted: false
};

interface student {
    readonly studentID: number,
    studentName: string,
    age?: number,
    gender: 'male' | 'female' | 'genderNeutral',        // Literal type
    subject: string,
    courseCompleted: boolean,
    addComment?(comment: string): string,
    addComment?: (Comment: string) => string;
};

function getStudentDetails(studentID: number): student
{
    return {
        studentID: 12345,
        studentName: 'HeoJinSu',
        gender: 'male',
        subject: 'C++, Java, etc',
        courseCompleted: false
    };
}

function saveStudentDetails(student: student): void {

}

saveStudentDetails(student1);