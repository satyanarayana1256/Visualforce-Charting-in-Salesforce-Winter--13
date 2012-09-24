public class ChartDemoController {

    // Data wrapper class 
    public class Data {
        public String name { get; set; }
        public Integer clicks { get; set; }
        public Data(String name) {
            this.name = name;
            this.clicks = 0;
        }
    }

    // Our data points
    public List<Data> dataPoints {get;set;}
    
    // Controller sets three buttons to 0 clicks
    public ChartDemoController(){
        this.dataPoints = new List<Data>();
        this.dataPoints.add(new Data('Button 1 Clicked'));
        this.dataPoints.add(new Data('Button 2 Clicked'));
        this.dataPoints.add(new Data('Button 3 Clicked'));
    }

    // Button 1 clicked    
    public PageReference button1() {
        this.dataPoints[0].clicks++;
        return null;
    }

    // Button 2 clicked
    public PageReference button2() {
        this.dataPoints[1].clicks++;
        return null;
    }
    
    // Button 3 clicked
    public PageReference button3() {
        this.dataPoints[2].clicks++;
        return null;
    }


}