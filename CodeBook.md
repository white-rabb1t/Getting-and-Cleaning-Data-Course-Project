Introduction
------------

This is the code book for the Getting and Cleaning Data Course Project
submission. The data set used in this analysis is the Human Activity
Recognition Using Smartphones Data Set, from the UC Irvine Machine
Learning Repository. It contains the Human Activity Recognition database
built from the recordings of 30 subjects performing activities of daily
living (ADL) while carrying a waist-mounted smartphone with embedded
inertial sensors.

Data Set Information
--------------------

The experiments have been carried out with a group of 30 volunteers
within an age bracket of 19-48 years. Each person performed six
activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING,
STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the
waist. Using its embedded accelerometer and gyroscope, we captured
3-axial linear acceleration and 3-axial angular velocity at a constant
rate of 50Hz. The experiments have been video-recorded to label the data
manually. The obtained dataset has been randomly partitioned into two
sets, where 70% of the volunteers was selected for generating the
training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by
applying noise filters and then sampled in fixed-width sliding windows
of 2.56 sec and 50% overlap (128 readings/window). The sensor
acceleration signal, which has gravitational and body motion components,
was separated using a Butterworth low-pass filter into body acceleration
and gravity. The gravitational force is assumed to have only low
frequency components, therefore a filter with 0.3 Hz cutoff frequency
was used. From each window, a vector of features was obtained by
calculating variables from the time and frequency domain.

For more information, please go to:
<a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones" class="uri">http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones</a>

Changes made to the dataset for this course project
---------------------------------------------------

1.  Data from the test set and train set were merged together to create
    one data set
2.  Only the measurements on the mean and standard deviation for each
    measurement were extracted for analysis
3.  The activities in the data set were given descriptive names
4.  The variable names were cleaned up. ‘t’ was replaced with ‘time’ and
    ‘f’ was replaced with ‘freq’. Typos were removed
5.  A new data set is then created, summing up the average of each
    variable for each activity and each subject

List of variable names, positions and descriptions
--------------------------------------------------

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead>
<tr class="header">
<th>Position</th>
<th>Variable name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td>Subject</td>
<td>ID number of the subject in the experiment</td>
</tr>
<tr class="even">
<td>2</td>
<td>Activity</td>
<td>One of six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) performed while wearing a smartphone (Samsung Galaxy S II) on the waist</td>
</tr>
<tr class="odd">
<td>3</td>
<td>timeBodyAcc-mean-X</td>
<td>The mean value of the body acceleration signals in the X-axial direction derived in time</td>
</tr>
<tr class="even">
<td>4</td>
<td>timeBodyAcc-mean-Y</td>
<td>The mean value of the body acceleration signals in the Y-axial direction derived in time</td>
</tr>
<tr class="odd">
<td>5</td>
<td>timeBodyAcc-mean-Z</td>
<td>The mean value of the body acceleration signals in the Z-axial direction derived in time</td>
</tr>
<tr class="even">
<td>6</td>
<td>timeBodyAcc-std-X</td>
<td>The standard deviation of the body acceleration signals in the X-axial direction derived in time</td>
</tr>
<tr class="odd">
<td>7</td>
<td>timeBodyAcc-std-Y</td>
<td>The standard deviation of the body acceleration signals in the Y-axial direction derived in time</td>
</tr>
<tr class="even">
<td>8</td>
<td>timeBodyAcc-std-Z</td>
<td>The standard deviation of the body acceleration signals in the Z-axial direction derived in time</td>
</tr>
<tr class="odd">
<td>9</td>
<td>timeGravityAcc-mean-X</td>
<td>The mean value of the gravity acceleration signals in the X-axial direction derived in time</td>
</tr>
<tr class="even">
<td>10</td>
<td>timeGravityAcc-mean-Y</td>
<td>The mean value of the gravity acceleration signals in the Y-axial direction derived in time</td>
</tr>
<tr class="odd">
<td>11</td>
<td>timeGravityAcc-mean-Z</td>
<td>The mean value of the gravity acceleration signals in the Z-axial direction derived in time</td>
</tr>
<tr class="even">
<td>12</td>
<td>timeGravityAcc-std-X</td>
<td>The standard deviation of the gravity acceleration signals in the X-axial direction derived in time</td>
</tr>
<tr class="odd">
<td>13</td>
<td>timeGravityAcc-std-Y</td>
<td>The standard deviation of the gravity acceleration signals in the Y-axial direction derived in time</td>
</tr>
<tr class="even">
<td>14</td>
<td>timeGravityAcc-std-Z</td>
<td>The standard deviation of the gravity acceleration signals in the Z-axial direction derived in time</td>
</tr>
<tr class="odd">
<td>15</td>
<td>timeBodyAccJerk-mean-X</td>
<td>The mean value of the body linear acceleration and angular velocity in the X-axial direction derived in time to obtain Jerk signals</td>
</tr>
<tr class="even">
<td>16</td>
<td>timeBodyAccJerk-mean-Y</td>
<td>The mean value of the body linear acceleration and angular velocity in the Y-axial direction derived in time to obtain Jerk signals</td>
</tr>
<tr class="odd">
<td>17</td>
<td>timeBodyAccJerk-mean-Z</td>
<td>The mean value of the body linear acceleration and angular velocity in the Z-axial direction derived in time to obtain Jerk signals</td>
</tr>
<tr class="even">
<td>18</td>
<td>timeBodyAccJerk-std-X</td>
<td>The standard deviation of the body linear acceleration and angular velocity in the X-axial direction derived in time to obtain Jerk signals</td>
</tr>
<tr class="odd">
<td>19</td>
<td>timeBodyAccJerk-std-Y</td>
<td>The standard deviation of the body linear acceleration and angular velocity in the Y-axial direction derived in time to obtain Jerk signals</td>
</tr>
<tr class="even">
<td>20</td>
<td>timeBodyAccJerk-std-Z</td>
<td>The standard deviation of the body linear acceleration and angular velocity in the Z-axial direction derived in time to obtain Jerk signals</td>
</tr>
<tr class="odd">
<td>21</td>
<td>timeBodyGyro-mean-X</td>
<td>The mean value of the body gyroscope signals in the X-axial direction derived in time</td>
</tr>
<tr class="even">
<td>22</td>
<td>timeBodyGyro-mean-Y</td>
<td>The mean value of the body gyroscope signals in the Y-axial direction derived in time</td>
</tr>
<tr class="odd">
<td>23</td>
<td>timeBodyGyro-mean-Z</td>
<td>The mean value of the body gyroscope signals in the Z-axial direction derived in time</td>
</tr>
<tr class="even">
<td>24</td>
<td>timeBodyGyro-std-X</td>
<td>The standard deviation of the body gyroscope signals in the X-axial direction derived in time</td>
</tr>
<tr class="odd">
<td>25</td>
<td>timeBodyGyro-std-Y</td>
<td>The standard deviation of the body gyroscope signals in the Y-axial direction derived in time</td>
</tr>
<tr class="even">
<td>26</td>
<td>timeBodyGyro-std-Z</td>
<td>The standard deviation of the body gyroscope signals in the Z-axial direction derived in time</td>
</tr>
<tr class="odd">
<td>27</td>
<td>timeBodyGyroJerk-mean-X</td>
<td>The mean value of the body gyroscope in the X-axial direction derived in time to obtain Jerk signals</td>
</tr>
<tr class="even">
<td>28</td>
<td>timeBodyGyroJerk-mean-Y</td>
<td>The mean value of the body gyroscope in the Y-axial direction derived in time to obtain Jerk signals</td>
</tr>
<tr class="odd">
<td>29</td>
<td>timeBodyGyroJerk-mean-Z</td>
<td>The mean value of the body gyroscope in the Z-axial direction derived in time to obtain Jerk signals</td>
</tr>
<tr class="even">
<td>30</td>
<td>timeBodyGyroJerk-std-X</td>
<td>The standard deviation of the body gyroscope in the X-axial direction derived in time to obtain Jerk signals</td>
</tr>
<tr class="odd">
<td>31</td>
<td>timeBodyGyroJerk-std-Y</td>
<td>The standard deviation of the body gyroscope in the Y-axial direction derived in time to obtain Jerk signals</td>
</tr>
<tr class="even">
<td>32</td>
<td>timeBodyGyroJerk-std-Z</td>
<td>The standard deviation of the body gyroscope in the Z-axial direction derived in time to obtain Jerk signals</td>
</tr>
<tr class="odd">
<td>33</td>
<td>timeBodyAccMag-mean</td>
<td>The mean value of the magnitude of the body acceleration signals derived in time</td>
</tr>
<tr class="even">
<td>34</td>
<td>timeBodyAccMag-std</td>
<td>The standard deviation of the magnitude of the body acceleration signals derived in time</td>
</tr>
<tr class="odd">
<td>35</td>
<td>timeGravityAccMag-mean</td>
<td>The mean value of the magnitude of the gravity acceleration signals derived in time</td>
</tr>
<tr class="even">
<td>36</td>
<td>timeGravityAccMag-std</td>
<td>The standard deviation of the magnitude of the gravity acceleration signals derived in time</td>
</tr>
<tr class="odd">
<td>37</td>
<td>timeBodyAccJerkMag-mean</td>
<td>The mean value of the magnitude of the body linear acceleration and angular velocity derived in time to obtain Jerk signals</td>
</tr>
<tr class="even">
<td>38</td>
<td>timeBodyAccJerkMag-std</td>
<td>The standard deviation of the magnitude of the body linear acceleration and angular velocity derived in time to obtain Jerk signals</td>
</tr>
<tr class="odd">
<td>39</td>
<td>timeBodyGyroMag-mean</td>
<td>The mean value of the magnitude of the body gyroscope signals derived in time</td>
</tr>
<tr class="even">
<td>40</td>
<td>timeBodyGyroMag-std</td>
<td>The standard deviation of the magnitude of the body gyroscope signals derived in time</td>
</tr>
<tr class="odd">
<td>41</td>
<td>timeBodyGyroJerkMag-mean</td>
<td>The mean value of the magnitude of the body gyroscope derived in time to obtain Jerk signals</td>
</tr>
<tr class="even">
<td>42</td>
<td>timeBodyGyroJerkMag-std</td>
<td>The standard deviation of the magnitude of the body gyroscope derived in time to obtain Jerk signals</td>
</tr>
<tr class="odd">
<td>43</td>
<td>freqBodyAcc-mean-X</td>
<td>The mean value of the body acceleration signals in the X-axial direction derived in frequency</td>
</tr>
<tr class="even">
<td>44</td>
<td>freqBodyAcc-mean-Y</td>
<td>The mean value of the body acceleration signals in the Y-axial direction derived in frequency</td>
</tr>
<tr class="odd">
<td>45</td>
<td>freqBodyAcc-mean-Z</td>
<td>The mean value of the body acceleration signals in the Z-axial direction derived in frequency</td>
</tr>
<tr class="even">
<td>46</td>
<td>freqBodyAcc-std-X</td>
<td>The standard deviation of the body acceleration signals in the X-axial direction derived in frequency</td>
</tr>
<tr class="odd">
<td>47</td>
<td>freqBodyAcc-std-Y</td>
<td>The standard deviation of the body acceleration signals in the Y-axial direction derived in frequency</td>
</tr>
<tr class="even">
<td>48</td>
<td>freqBodyAcc-std-Z</td>
<td>The standard deviation of the body acceleration signals in the Z-axial direction derived in frequency</td>
</tr>
<tr class="odd">
<td>49</td>
<td>freqBodyAcc-meanFreq-X</td>
<td>The weighted average of the frequency components to obtain a mean frequency of the body acceleration signals in the X-axial direction derived in frequency</td>
</tr>
<tr class="even">
<td>50</td>
<td>freqBodyAcc-meanFreq-Y</td>
<td>The weighted average of the frequency components to obtain a mean frequency of the body acceleration signals in the Y-axial direction derived in frequency</td>
</tr>
<tr class="odd">
<td>51</td>
<td>freqBodyAcc-meanFreq-Z</td>
<td>The weighted average of the frequency components to obtain a mean frequency of the body acceleration signals in the Z-axial direction derived in frequency</td>
</tr>
<tr class="even">
<td>52</td>
<td>freqBodyAccJerk-mean-X</td>
<td>The mean value of the body linear acceleration and angular velocity in the X-axial direction derived in frequency to obtain Jerk signals</td>
</tr>
<tr class="odd">
<td>53</td>
<td>freqBodyAccJerk-mean-Y</td>
<td>The mean value of the body linear acceleration and angular velocity in the Y-axial direction derived in frequency to obtain Jerk signals</td>
</tr>
<tr class="even">
<td>54</td>
<td>freqBodyAccJerk-mean-Z</td>
<td>The mean value of the body linear acceleration and angular velocity in the Z-axial direction derived in frequency to obtain Jerk signals</td>
</tr>
<tr class="odd">
<td>55</td>
<td>freqBodyAccJerk-std-X</td>
<td>The standard deviation of the body linear acceleration and angular velocity in the X-axial direction derived in frequency to obtain Jerk signals</td>
</tr>
<tr class="even">
<td>56</td>
<td>freqBodyAccJerk-std-Y</td>
<td>The standard deviation of the body linear acceleration and angular velocity in the Y-axial direction derived in frequency to obtain Jerk signals</td>
</tr>
<tr class="odd">
<td>57</td>
<td>freqBodyAccJerk-std-Z</td>
<td>The standard deviation of the body linear acceleration and angular velocity in the Z-axial direction derived in frequency to obtain Jerk signals</td>
</tr>
<tr class="even">
<td>58</td>
<td>freqBodyAccJerk-meanFreq-X</td>
<td>The weighted average of the frequency components to obtain a mean frequency of the body linear acceleration and angular velocity in the X-axial direction derived in frequency to obtain Jerk signals</td>
</tr>
<tr class="odd">
<td>59</td>
<td>freqBodyAccJerk-meanFreq-Y</td>
<td>The weighted average of the frequency components to obtain a mean frequency of the body linear acceleration and angular velocity in the Y-axial direction derived in frequency to obtain Jerk signals</td>
</tr>
<tr class="even">
<td>60</td>
<td>freqBodyAccJerk-meanFreq-Z</td>
<td>The weighted average of the frequency components to obtain a mean frequency of the body linear acceleration and angular velocity in the Z-axial direction derived in frequency to obtain Jerk signals</td>
</tr>
<tr class="odd">
<td>61</td>
<td>freqBodyGyro-mean-X</td>
<td>The mean value of the body gyroscope signals in the X-axial direction derived in frequency</td>
</tr>
<tr class="even">
<td>62</td>
<td>freqBodyGyro-mean-Y</td>
<td>The mean value of the body gyroscope signals in the Y-axial direction derived in frequency</td>
</tr>
<tr class="odd">
<td>63</td>
<td>freqBodyGyro-mean-Z</td>
<td>The mean value of the body gyroscope signals in the Z-axial direction derived in frequency</td>
</tr>
<tr class="even">
<td>64</td>
<td>freqBodyGyro-std-X</td>
<td>The standard deviation of the body gyroscope signals in the X-axial direction derived in frequency</td>
</tr>
<tr class="odd">
<td>65</td>
<td>freqBodyGyro-std-Y</td>
<td>The standard deviation of the body gyroscope signals in the Y-axial direction derived in frequency</td>
</tr>
<tr class="even">
<td>66</td>
<td>freqBodyGyro-std-Z</td>
<td>The standard deviation of the body gyroscope signals in the Z-axial direction derived in frequency</td>
</tr>
<tr class="odd">
<td>67</td>
<td>freqBodyGyro-meanFreq-X</td>
<td>The weighted average of the frequency components to obtain a mean frequency of the body gyroscope signals in the X-axial direction derived in frequency</td>
</tr>
<tr class="even">
<td>68</td>
<td>freqBodyGyro-meanFreq-Y</td>
<td>The weighted average of the frequency components to obtain a mean frequency of the body gyroscope signals in the Y-axial direction derived in frequency</td>
</tr>
<tr class="odd">
<td>69</td>
<td>freqBodyGyro-meanFreq-Z</td>
<td>The weighted average of the frequency components to obtain a mean frequency of the body gyroscope signals in the Z-axial direction derived in frequency</td>
</tr>
<tr class="even">
<td>70</td>
<td>freqBodyAccMag-mean</td>
<td>The mean value of the magnitude of the body acceleration signals derived in frequency</td>
</tr>
<tr class="odd">
<td>71</td>
<td>freqBodyAccMag-std</td>
<td>The standard deviation of the magnitude of the body acceleration signals derived in frequency</td>
</tr>
<tr class="even">
<td>72</td>
<td>freqBodyAccMag-meanFreq</td>
<td>The weighted average of the frequency components to obtain a mean frequency of the magnitude of the body acceleration signals derived in frequency</td>
</tr>
<tr class="odd">
<td>73</td>
<td>freqBodyAccJerkMag-mean</td>
<td>The mean value of the magnitude of the body linear acceleration and angular velocity derived in frequency to obtain Jerk signals</td>
</tr>
<tr class="even">
<td>74</td>
<td>freqBodyAccJerkMag-std</td>
<td>The standard deviation of the magnitude of the body linear acceleration and angular velocity derived in frequency to obtain Jerk signals</td>
</tr>
<tr class="odd">
<td>75</td>
<td>freqBodyAccJerkMag-meanFreq</td>
<td>The weighted average of the frequency components to obtain a mean frequency of the magnitude of the body linear acceleration and angular velocity derived in frequency to obtain Jerk signals</td>
</tr>
<tr class="even">
<td>76</td>
<td>freqBodyGyroMag-mean</td>
<td>The mean value of the magnitude of the body gyroscope signals derived in frequency</td>
</tr>
<tr class="odd">
<td>77</td>
<td>freqBodyGyroMag-std</td>
<td>The standard deviation of the magnitude of the body gyroscope signals derived in frequency</td>
</tr>
<tr class="even">
<td>78</td>
<td>freqBodyGyroMag-meanFreq</td>
<td>The weighted average of the frequency components to obtain a mean frequency of the magnitude of the body gyroscope signals derived in frequency</td>
</tr>
<tr class="odd">
<td>79</td>
<td>freqBodyGyroJerkMag-mean</td>
<td>The mean value of the magnitude of the body gyroscope derived in frequency to obtain Jerk signals</td>
</tr>
<tr class="even">
<td>80</td>
<td>freqBodyGyroJerkMag-std</td>
<td>The standard deviation of the magnitude of the body gyroscope derived in frequency to obtain Jerk signals</td>
</tr>
<tr class="odd">
<td>81</td>
<td>freqBodyGyroJerkMag-meanFreq</td>
<td>The sweighted average of the frequency components to obtain a mean frequency of the magnitude of the body gyroscope derived in frequency to obtain Jerk signals</td>
</tr>
</tbody>
</table>
