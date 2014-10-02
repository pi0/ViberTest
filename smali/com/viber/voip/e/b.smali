.class Lcom/viber/voip/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerLocalCallState;


# instance fields
.field final synthetic a:Lcom/viber/voip/e/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/e/a;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/viber/voip/e/b;->a:Lcom/viber/voip/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallEnded(JZLjava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/viber/voip/e/b;->a:Lcom/viber/voip/e/a;

    invoke-static {v0}, Lcom/viber/voip/e/a;->a(Lcom/viber/voip/e/a;)Lcom/viber/voip/e/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/viber/voip/e/b;->a:Lcom/viber/voip/e/a;

    invoke-static {v0}, Lcom/viber/voip/e/a;->a(Lcom/viber/voip/e/a;)Lcom/viber/voip/e/g;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/e/g;->a(Lcom/viber/voip/e/g;)Lcom/viber/voip/util/fr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/fr;->b()V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/e/b;->a:Lcom/viber/voip/e/a;

    new-instance v1, Lcom/viber/voip/e/c;

    invoke-direct {v1, p0}, Lcom/viber/voip/e/c;-><init>(Lcom/viber/voip/e/b;)V

    invoke-static {v0, v1}, Lcom/viber/voip/e/a;->a(Lcom/viber/voip/e/a;Lcom/viber/voip/e/s;)V

    .line 53
    return-void
.end method

.method public onCallStarted(Z)V
    .locals 0
    .parameter

    .prologue
    .line 39
    return-void
.end method

.method public onHangup()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method
