.class Lcom/viber/voip/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/r;


# direct methods
.method constructor <init>(Lcom/viber/voip/r;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/viber/voip/s;->a:Lcom/viber/voip/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/viber/voip/s;->a:Lcom/viber/voip/r;

    iget-object v0, v0, Lcom/viber/voip/r;->b:Lcom/viber/voip/BaseAddFriendActivity;

    invoke-static {v0}, Lcom/viber/voip/BaseAddFriendActivity;->d(Lcom/viber/voip/BaseAddFriendActivity;)V

    .line 164
    return-void
.end method
