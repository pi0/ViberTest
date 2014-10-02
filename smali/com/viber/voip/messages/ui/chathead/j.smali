.class Lcom/viber/voip/messages/ui/chathead/j;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/chathead/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/d;)V
    .locals 0
    .parameter

    .prologue
    .line 1093
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/j;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/j;->a:Lcom/viber/voip/messages/ui/chathead/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/chathead/d;->d(Lcom/viber/voip/messages/ui/chathead/d;Z)Z

    .line 1097
    return-void
.end method
