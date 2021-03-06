<?php
    include_once "./vendor/autoload.php";

    use App\Controller\Attendance;
    use App\Controller\Faculty;
    use App\Controller\Assingment;
    use App\Controller\Controller;

    if(isset($_POST['createAssessment'])){
        $ctrl = new Controller;
        $ctrl->createAssessment($_POST);
    }
    if(isset($_POST['createExam'])){
        $ctrl = new Controller;
        $ctrl->createExam($_POST);
    }
    if(isset($_POST['loadExam'])){
        $ctrl = new Controller;
        $ctrl->fetchExam($_POST['assessmentId']);
    }
    if(isset($_POST['reload'])){
        $ctrl = new Controller;
        $schoolData = [
            "faculty_id" => $_POST['facultyId']
        ];
        $ctrl->reFetchAssessment($schoolData);
    }
    if(isset($_POST['login'])){

        $teacher = new Faculty;
        $data = [
            "email" => $_POST['email'],
            "password" => $_POST['password']
        ];
        $login = $teacher->login($data);

        if($login){
            echo "success";
        }
    }
    if(isset($_POST['mark'])){
        $data = [
            "student_id" => $_POST['student_id'],
            "attendance" => $_POST['attendance']
        ];
        $attendance = new AttendanceController;
        $attendance->createAttendance($data);
    }

    if(isset($_POST['fetch'])){
        $assignment = new Assingment;
        echo json_encode($assignment->fetchSingleAssingment($_POST['assId']));
    }

    if(isset($_POST['draft-assignment'])){
        $assignment = new Assingment;
        $assignment->createAssignment($_POST);
    }
?>