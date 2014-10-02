.class Lcom/viber/voip/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/BaseAddFriendActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/BaseAddFriendActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/viber/voip/m;->a:Lcom/viber/voip/BaseAddFriendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/viber/voip/m;->a:Lcom/viber/voip/BaseAddFriendActivity;

    invoke-static {v0}, Lcom/viber/voip/BaseAddFriendActivity;->b(Lcom/viber/voip/BaseAddFriendActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 53
    return-void
.end method
