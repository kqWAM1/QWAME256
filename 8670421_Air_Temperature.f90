PROGRAM CreateTemperatureCSV
IMPLICIT NONE
INTEGER :: i, ios 
REAL :: temperature 
CHARACTER(LEN=20) :: output_file 
output_file = 'Air_Temperature.csv'
OPEN(10, file=output_file, status='replace', action='write', iostat=ios)
IF (ios /=0 ) THEN 
WRITE (*,*) 'Error opening file: ', output_file 
STOP
END IF 
DO i = 1, 10  
 temperature = i * 10.0
WRITE (10, '(F5.1)') temperature 
END DO 
CLOSE(10) 
WRITE(*, *) 'CSV file create successfully: ',output_file 

END PROGRAM CreateTemperatureCSV  
