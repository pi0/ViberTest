.class Lcom/viber/voip/user/PhotoSelectionActivity$5$1;
.super Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$1:Lcom/viber/voip/user/PhotoSelectionActivity$5;


# direct methods
.method constructor <init>(Lcom/viber/voip/user/PhotoSelectionActivity$5;)V
    .locals 0
    .parameter

    .prologue
    .line 516
    iput-object p1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$5$1;->this$1:Lcom/viber/voip/user/PhotoSelectionActivity$5;

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V
    .locals 1
    .parameter

    .prologue
    .line 519
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$5$1;->this$1:Lcom/viber/voip/user/PhotoSelectionActivity$5;

    iget-object v0, v0, Lcom/viber/voip/user/PhotoSelectionActivity$5;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    #calls: Lcom/viber/voip/user/PhotoSelectionActivity;->finishImmediatelyWithNoAnimation()V
    invoke-static {v0}, Lcom/viber/voip/user/PhotoSelectionActivity;->access$700(Lcom/viber/voip/user/PhotoSelectionActivity;)V

    .line 520
    return-void
.end method
