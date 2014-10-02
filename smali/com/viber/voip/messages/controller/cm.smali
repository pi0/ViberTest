.class Lcom/viber/voip/messages/controller/cm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/viber/voip/messages/controller/ck;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/ck;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/viber/voip/messages/controller/cm;->b:Lcom/viber/voip/messages/controller/ck;

    iput p2, p0, Lcom/viber/voip/messages/controller/cm;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cm;->b:Lcom/viber/voip/messages/controller/ck;

    iget-object v0, v0, Lcom/viber/voip/messages/controller/ck;->b:Lcom/viber/voip/messages/controller/cn;

    iget v1, p0, Lcom/viber/voip/messages/controller/cm;->a:I

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/cn;->a(I)V

    .line 164
    return-void
.end method
