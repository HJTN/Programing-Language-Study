class Employee {
    fullName: string;
    age: number;
    jobTitle: string;
    hourlyRate: number;
    workingHoursPerWeek: number;

    printEmployeeDetails = (): void => {
        console.log(`${this.fullName}�� ������ ${this.jobTitle}�̰� �������� ������
        ${this.hourlyRate * this.workingHoursPerWeek}�޷� �̴�.`);
    }
}

let employee1 = new Employee();
employee1.printEmployeeDetails();

