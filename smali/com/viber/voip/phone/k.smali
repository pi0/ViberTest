.class Lcom/viber/voip/phone/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/phone/j;


# direct methods
.method constructor <init>(Lcom/viber/voip/phone/j;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/viber/voip/phone/k;->a:Lcom/viber/voip/phone/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/viber/voip/phone/k;->a:Lcom/viber/voip/phone/j;

    iget-object v0, v0, Lcom/viber/voip/phone/j;->a:Lcom/viber/voip/phone/i;

    invoke-static {v0}, Lcom/viber/voip/phone/i;->f(Lcom/viber/voip/phone/i;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/viber/voip/phone/k;->a:Lcom/viber/voip/phone/j;

    iget-object v0, v0, Lcom/viber/voip/phone/j;->a:Lcom/viber/voip/phone/i;

    invoke-static {v0}, Lcom/viber/voip/phone/i;->g(Lcom/viber/voip/phone/i;)V

    .line 139
    :cond_0
    return-void
.end method
