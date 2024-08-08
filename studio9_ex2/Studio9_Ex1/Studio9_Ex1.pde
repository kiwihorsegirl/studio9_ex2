StudentMarks s1;
StudentMarks s2;
DataSet d1;
DataSet d2;
DataSet selectedDataSet;

RectangleButton button1;
RectangleButton button2;

ArrayList<Button> _buttonList;

void setup()
{
  size(800, 600);
  //Create student mark objects and print their data to the console window
  //s1 = new StudentMarks("85858", 90, 70, #FF0000);
  //s2 = new StudentMarks("657", 50, 85, #FF0000);
  //println(s1);
  //println(s2);
  
  //Create two data set objects and display each data set to the console window
  d1 = new DataSet("101-17b.csv", #7433DE);
  d1.displayDataSet();
  //Display the average internal and exam mark
  println("Average internal mark: " + d1.getAverageInternal());
  println("Average exam mark: " + d1.getAverageExam());
  
  d2 = new DataSet("101-17a.csv", #ED3258);
  d2.displayDataSet();
  //Display the average internal and exam mark
  println("Average internal mark: " + d2.getAverageInternal());
  println("Average exam mark: " + d2.getAverageExam());
  
  //Set the selected data set to null as not data set is initially selected
  selectedDataSet = null;
  
  _buttonList = new ArrayList<Button>();
  
  int b1Width = (width / 2 - 170 - 10);
  int b2Width = (width / 2 + 10);
  
  button1 = new RectangleButton(b1Width, 500, "DataSet1", #6FAF3C, 170, 70);
  button2 = new RectangleButton(b2Width, 500, "DataSet2", #6FAF3C, 170, 70);
  
  _buttonList.add(button1);
  _buttonList.add(button2);
}

void draw()
{
  background(255);
  //Plot the two student mark objects
  //s1.plotMark();
  //s2.plotMark();
  float yPosition = 150;
  //float yPosition = height - button1._bHeight - 30;
  
  
  //If a dataset has been selected then plot it
  if (selectedDataSet != null)
  {
    selectedDataSet.plotDataSet(yPosition); 
  }
  
  button1.drawButton();
  button2.drawButton();
  
}



void keyPressed()
{
  //Set the data set to be plotted based on which key is pressed
  if (key == '1')
  {
    selectedDataSet = d1; 
  }
  else if (key == '2')
  {
    selectedDataSet = d2; 
  }
}


void mousePressed() {
  for (Button b : _buttonList) {
    if (button1.isClicked(mouseX, mouseY)) {
      selectedDataSet = d1; 
    }
    
    if (button2.isClicked(mouseX, mouseY)) {
      selectedDataSet = d2; 
    }
  }
}
