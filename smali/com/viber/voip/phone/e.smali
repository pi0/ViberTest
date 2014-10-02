.class Lcom/viber/voip/phone/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/phone/call/k;

.field final synthetic b:Z

.field final synthetic c:Lcom/viber/voip/phone/c;


# direct methods
.method constructor <init>(Lcom/viber/voip/phone/c;Lcom/viber/voip/phone/call/k;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/viber/voip/phone/e;->c:Lcom/viber/voip/phone/c;

    iput-object p2, p0, Lcom/viber/voip/phone/e;->a:Lcom/viber/voip/phone/call/k;

    iput-boolean p3, p0, Lcom/viber/voip/phone/e;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/viber/voip/phone/e;->a:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/phone/e;->b:Z

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/call/n;->h(Z)Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->notifyObservers()V

    .line 154
    return-void
.end method
