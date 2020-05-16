class Story {
  String storyTitle;
  String choice1;
  String choice2;
  int nextStory1;
  int nextStory2;

  Story({String storyTitle, String choice1, String choice2, int nextStory1, int nextStory2}) {
    this.storyTitle = storyTitle;
    this.choice1 = choice1;
    this.choice2 = choice2;

    this.nextStory1 = nextStory1;
    this.nextStory2 = nextStory2;
  }
}
