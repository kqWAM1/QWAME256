PROGRAM ConvertTemperatures 
IMPLICIT NONE 
INTEGER :: i, ios 
REAL :: temperature, kelvin 
CHARACTER(len=20) :: input_file 
CHARACTER(len=40) :: output_file 

input_file = 'Air_temperature.CSV'
WRITE(output_file, '(I8)') 8670421
output_file = trim(output_file) // 'Air temperature_Assignment.CSV'

OPEN(unit=10, file=input_file, status='old', action='read',iostat=ios)
IF (ios /=0 ) THEN 
WRITE (* ,*) 'Error opening file: ', input_file 
STOP 
END IF 

WRITE(20, '(A, A) 'celsius, kelvin
DO i = 1, 10
READ(10, *, iostat=ios) temperature 
IF (ios /= 0) THEN 
WRITE (*,*) 'Error reading temperature from file: ', input_file 
STOP 
END IF 
kelvin = temperature +273.15
WRITE(20, '(F10.2, F10.2)') temperature, kelvin 
END DO 
CLOSE(10) 
CLOSE(20) 

WRITE (* , *) 'output data saved to file: ',trim (output_file)
END PROGRAM ConvertTemperatures   
 

