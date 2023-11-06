package model;

public class Page {

	private String title;
	private String style;
	private String script;

	public Page() {
	}

	public Page(String title) {
		super();
		this.title = title;
	}

	public Page(String title, String style) {
		super();
		this.title = title;
		this.style = style;
	}

	public Page(String title, String style, String script) {
		super();
		this.title = title;
		this.style = style;
		this.script = script;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getStyle() {
		return style;
	}

	public void setStyle(String style) {
		this.style = style;
	}

	public String getScript() {
		return script;
	}

	public void setScript(String script) {
		this.script = script;
	}

}