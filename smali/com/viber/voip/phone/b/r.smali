.class Lcom/viber/voip/phone/b/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/viber/voip/phone/b/p;


# direct methods
.method constructor <init>(Lcom/viber/voip/phone/b/p;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lcom/viber/voip/phone/b/r;->b:Lcom/viber/voip/phone/b/p;

    iput p2, p0, Lcom/viber/voip/phone/b/r;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/viber/voip/phone/b/r;->b:Lcom/viber/voip/phone/b/p;

    iget-object v0, v0, Lcom/viber/voip/phone/b/p;->a:Lcom/viber/voip/phone/b/k;

    iget v1, p0, Lcom/viber/voip/phone/b/r;->a:I

    invoke-static {v0, v1}, Lcom/viber/voip/phone/b/k;->a(Lcom/viber/voip/phone/b/k;I)V

    .line 495
    return-void
.end method
