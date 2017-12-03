/*:
 Using the value from the ultrasonic sensor make the mBot move backwards and forward avoiding an object in front of it.
 */
//#-hidden-code
runWithCommands()
//#-code-completion(everything, hide)
//#-code-completion(keyword, if)

execiseWithViewController = { viewController in
    func plotData(data: Float){
        viewController.setHintInfo(content:"Data Output:\(data)")
        viewController.appendValue(value:Double(data))
    }
    //#-end-hidden-code
    
    func onSensor(value: Float) {
        
        plotData(data:value)
        //#-editable-code
        if value <= 30{
            move(speed: -100)
            wait(time: 1)
            move(speed: 0)
        }
        else if value > 31 && value <= 450{
            move(speed: 100)
            wait(time: 1)
            move(speed: 0)
        }
        //#-end-editable-code
    }
    
    //#-hidden-code
    viewController.setShowGraphView(show: true)
    subscribeUltrasonicSensor(callback: onSensor)
    
}
//#-end-hidden-code

