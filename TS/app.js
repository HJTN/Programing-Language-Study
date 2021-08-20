var studentID = 12345;
var studentName = 'HeoJinSu';
var age = 21;
var gender = 'male';
var subject = 'C++, Java, etc';
var courseCompleted = false;
var student1 = {
    studentID: 121212,
    studentName: 'Jack',
    age: 28,
    gender: 'male',
    subject: 'Mongo DB',
    courseCompleted: false
};
;
function getStudentDetails(studentID) {
    return {
        studentID: 12345,
        studentName: 'HeoJinSu',
        gender: 'male',
        subject: 'C++, Java, etc',
        courseCompleted: false
    };
}
function saveStudentDetails(student) {
}
saveStudentDetails(student1);
