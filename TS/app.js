var studentID = 12345;
var studentName = 'HeoJinSu';
var age = 21;
var gender = 'male';
var subject = 'C++, Java, etc';
var courseCompleted = false;
var genderType;
(function (genderType) {
    genderType[genderType["Male"] = 0] = "Male";
    genderType[genderType["Female"] = 1] = "Female";
    genderType[genderType["genderNeutral"] = 2] = "genderNeutral"; // genderNeutral = 2
})(genderType || (genderType = {}));
var genderTypeString;
(function (genderTypeString) {
    genderTypeString["Male"] = "male";
    genderTypeString["Female"] = "female";
    genderTypeString["genderNeutral"] = "genderneutral";
})(genderTypeString || (genderTypeString = {}));
var student1 = {
    studentID: 121212,
    studentName: 'Jack',
    age: 28,
    gender: genderTypeString.Male,
    subject: 'Mongo DB',
    courseCompleted: false
};
;
function getStudentDetails(studentID) {
    return {
        studentID: 12345,
        studentName: 'HeoJinSu',
        gender: genderTypeString.Male,
        subject: 'C++, Java, etc',
        courseCompleted: false
    };
}
function saveStudentDetails(student) {
}
saveStudentDetails(student1);
