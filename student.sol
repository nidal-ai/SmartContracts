// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentContract {

    struct Student {
        string firstName;
        string lastName;
    }

    Student[] public students;

    function addStudent(string memory _firstName, string memory _lastName) public {
        students.push(Student(_firstName, _lastName));
    }

    function getStudent(uint index) public view returns (string memory, string memory) {
        return (students[index].firstName, students[index].lastName);
    }
}