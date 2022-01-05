using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WatchSelect : MonoBehaviour
{
    public GameObject watchModel1;
    public GameObject watchModel2;
    public GameObject watchModel3;
    public GameObject watch1Window;
    public GameObject watch2Window;
    public GameObject watch3Window;
    Animation w1watchAnimation;
    Animation w2watchAnimation;
    Animation w3watchAnimation;

    // Start is called before the first frame update
    void Start()
    {
        w1watchAnimation =watch1Window.GetComponent<Animation>();
        w2watchAnimation =watch2Window.GetComponent<Animation>();
        w3watchAnimation =watch3Window.GetComponent<Animation>();

    }
    //WATCH1
    public void Watch1ButtonClicked(){
        //show watch 1 model and disable watch 2, 3
        watchModel1.SetActive(true);
        watchModel2.SetActive(false);
        watchModel3.SetActive(false);
        // show window animation
        w1watchAnimation["w1animation"].speed =1;
        w1watchAnimation.Play();
    }
    public void CloseW1ButtonClicked(){
        w1watchAnimation["w1animation"].speed =-1;
        w1watchAnimation["w1animation"].time = w1watchAnimation["w1animation"].length;
        w1watchAnimation.Play();
        watchModel1.SetActive(false);
    }
    //WATCH2
    public void Watch2ButtonClicked(){
        //show watch 2 model and disable watch 1, 3 
        watchModel2.SetActive(true);
        watchModel1.SetActive(false);
        watchModel3.SetActive(false);
        // show window animation
        w2watchAnimation["w2animation"].speed =1;
        w2watchAnimation.Play();
    }
    public void CloseW2ButtonClicked(){
        w2watchAnimation["w2animation"].speed =-1;
        w2watchAnimation["w2animation"].time = w2watchAnimation["w2animation"].length;
        w2watchAnimation.Play();
        watchModel2.SetActive(false);
    }
    //WATCH3
    public void Watch3ButtonClicked(){
        //show watch 3 model and window animation disable watch 1, 2
        watchModel3.SetActive(true);
        watchModel1.SetActive(false);
        watchModel2.SetActive(false);
        // show window animation
        w3watchAnimation["w3animation"].speed =1;
        w3watchAnimation.Play();
    }
    public void CloseW3ButtonClicked(){
        w3watchAnimation["w3animation"].speed =-1;
        w3watchAnimation["w3animation"].time = w3watchAnimation["w3animation"].length;
        w3watchAnimation.Play();
        watchModel3.SetActive(false);
    }

}
