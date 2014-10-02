.class Lcom/viber/voip/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/n;


# direct methods
.method constructor <init>(Lcom/viber/voip/n;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/viber/voip/o;->a:Lcom/viber/voip/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/viber/voip/o;->a:Lcom/viber/voip/n;

    iget-object v0, v0, Lcom/viber/voip/n;->a:Lcom/viber/voip/BaseAddFriendActivity;

    invoke-static {v0}, Lcom/viber/voip/BaseAddFriendActivity;->d(Lcom/viber/voip/BaseAddFriendActivity;)V

    .line 91
    return-void
.end method
