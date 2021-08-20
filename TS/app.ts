let studentID: number = 12345;
let studentName: string = 'HeoJinSu';
let age: number = 21;
let gender: string = 'male';
let subject: string = 'C++, Java, etc';
let courseCompleted: boolean = false;

enum genderType {           // numeric enum
    Male,           // Male = 0
    Female,         // Female = 1
    genderNeutral   // genderNeutral = 2
}

enum genderTypeString {     // string enum
    Male = 'male',
    Female = 'female',
    genderNeutral = 'genderneutral',
}

let student1 = {
    studentID: 121212,
    studentName: 'Jack',
    age: 28,
    gender: genderTypeString.Male,
    subject: 'Mongo DB',
    courseCompleted: false
};

interface student {
    readonly studentID: number,
    studentName: string,
    age?: number,
    gender: genderTypeString,
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
        gender: genderTypeString.Male,
        subject: 'C++, Java, etc',
        courseCompleted: false
    };
}

function saveStudentDetails(student: student): void {

}

saveStudentDetails(student1);