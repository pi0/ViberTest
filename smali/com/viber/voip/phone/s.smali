.class Lcom/viber/voip/phone/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/phone/q;


# direct methods
.method constructor <init>(Lcom/viber/voip/phone/q;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/viber/voip/phone/s;->a:Lcom/viber/voip/phone/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/viber/voip/phone/s;->a:Lcom/viber/voip/phone/q;

    invoke-static {v0}, Lcom/viber/voip/phone/q;->a(Lcom/viber/voip/phone/q;)Lcom/viber/voip/phone/call/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->o()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/phone/s;->a:Lcom/viber/voip/phone/q;

    invoke-static {v0}, Lcom/viber/voip/phone/q;->a(Lcom/viber/voip/phone/q;)Lcom/viber/voip/phone/call/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->o()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/phone/s;->a:Lcom/viber/voip/phone/q;

    invoke-static {v0}, Lcom/viber/voip/phone/q;->a(Lcom/viber/voip/phone/q;)Lcom/viber/voip/phone/call/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->o()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 147
    new-instance v0, Lcom/viber/voip/phone/call/a/b;

    iget-object v1, p0, Lcom/viber/voip/phone/s;->a:Lcom/viber/voip/phone/q;

    invoke-static {v1}, Lcom/viber/voip/phone/q;->a(Lcom/viber/voip/phone/q;)Lcom/viber/voip/phone/call/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/viber/voip/phone/call/a/b;-><init>(Lcom/viber/voip/phone/call/k;)V

    iget-object v1, p0, Lcom/viber/voip/phone/s;->a:Lcom/viber/voip/phone/q;

    invoke-static {v1}, Lcom/viber/voip/phone/q;->a(Lcom/viber/voip/phone/q;)Lcom/viber/voip/phone/call/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/phone/s;->a:Lcom/viber/voip/phone/q;

    invoke-static {v2}, Lcom/viber/voip/phone/q;->b(Lcom/viber/voip/phone/q;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/phone/call/a/b;->a(Lcom/viber/voip/phone/call/n;Z)V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/s;->a:Lcom/viber/voip/phone/q;

    iget-object v0, v0, Lcom/viber/voip/phone/q;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-virtual {v0}, Lcom/viber/voip/phone/PhoneActivity;->finish()V

    .line 150
    iget-object v0, p0, Lcom/viber/voip/phone/s;->a:Lcom/viber/voip/phone/q;

    iget-object v0, v0, Lcom/viber/voip/phone/q;->a:Lcom/viber/voip/phone/PhoneActivity;

    const-string/jumbo v1, "Timer Finish"

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/PhoneActivity;->b(Ljava/lang/String;)V

    .line 151
    return-void
.end method
