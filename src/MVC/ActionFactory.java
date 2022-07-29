package MVC;

public class ActionFactory {
	private static ActionFactory instance =new ActionFactory();
	private ActionFactory() { }
	public static ActionFactory getInstance() {
		return instance;
	}
	
	Action getAction(String command) {
		Action action =null;
		switch(command) {
		case "infochange":
			action = new infochangeAction();
			break;
		case "infochangeresult":
			action =new infochangeresultAction();
			break;
		case "delete":
			action =new deleteAction();
			break;
		case "deleteresult":
			action =new deleteresult();
			break;
		}
		
		return action;
	}
	
}
