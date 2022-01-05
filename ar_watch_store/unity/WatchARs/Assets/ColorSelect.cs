using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ColorSelect : MonoBehaviour
{
  public Material band1;
  public Material band2;
  public Material band3_1;
  public Material band3_2;

  void Start(){}
  public void w1ColorBlue(){
    Color myColor = new Color();
    ColorUtility.TryParseHtmlString("#103B90", out myColor);
    band1.color = myColor;
  }
    public void w1ColorBlack(){
    Color myColor = new Color();
    ColorUtility.TryParseHtmlString("#000000", out myColor);
    band1.color = myColor;
  }
public void w2ColorBlack(){
    Color myColor = new Color();
    ColorUtility.TryParseHtmlString("#000000", out myColor);
    band2.color = myColor;
}
public void w2ColorBrown(){
    Color myColor = new Color();
    ColorUtility.TryParseHtmlString("#60281E", out myColor);
    band2.color = myColor;
}

  public void w3ColorGold(){
    Color myColor = new Color();
    ColorUtility.TryParseHtmlString("#D3A13B", out myColor);
    band3_1.color = myColor;
    ColorUtility.TryParseHtmlString("#B58D3D", out myColor);
    band3_2.color = myColor;
  }
    public void w3ColorWhite(){
    Color myColor = new Color();
    ColorUtility.TryParseHtmlString("#A1A1A1", out myColor);
    band3_1.color = myColor;
    ColorUtility.TryParseHtmlString("#354A6B", out myColor);
    band3_2.color = myColor;
    }


}
