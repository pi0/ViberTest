.class Lcom/viber/voip/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/viber/voip/n;


# direct methods
.method constructor <init>(Lcom/viber/voip/n;ZILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/viber/voip/p;->d:Lcom/viber/voip/n;

    iput-boolean p2, p0, Lcom/viber/voip/p;->a:Z

    iput p3, p0, Lcom/viber/voip/p;->b:I

    iput-object p4, p0, Lcom/viber/voip/p;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/viber/voip/p;->d:Lcom/viber/voip/n;

    iget-object v0, v0, Lcom/viber/voip/n;->a:Lcom/viber/voip/BaseAddFriendActivity;

    iget-boolean v1, p0, Lcom/viber/voip/p;->a:Z

    iget v2, p0, Lcom/viber/voip/p;->b:I

    iget-object v3, p0, Lcom/viber/voip/p;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/BaseAddFriendActivity;->a(Lcom/viber/voip/BaseAddFriendActivity;ZILjava/lang/String;)V

    .line 101
    return-void
.end method
