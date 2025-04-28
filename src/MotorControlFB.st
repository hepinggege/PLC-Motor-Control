FUNCTION_BLOCK MotorControlFB
VAR_INPUT
    Start : BOOL;
    Stop : BOOL;
END_VAR

VAR_OUTPUT
    MotorRunning : BOOL;
END_VAR

VAR
    MotorStarted : BOOL;
END_VAR

IF Start AND NOT MotorStarted THEN
    MotorRunning := TRUE;
    MotorStarted := TRUE;
ELSIF Stop THEN
    MotorRunning := FALSE;
    MotorStarted := FALSE;
END_IF;

END_FUNCTION_BLOCK