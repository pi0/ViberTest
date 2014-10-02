.class Lcom/viber/voip/contacts/c/f/b/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/ai;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/contacts/c/f/b/r;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/f/b/r;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/b/s;->b:Lcom/viber/voip/contacts/c/f/b/r;

    iput-object p2, p0, Lcom/viber/voip/contacts/c/f/b/s;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/s;->b:Lcom/viber/voip/contacts/c/f/b/r;

    iget-object v0, v0, Lcom/viber/voip/contacts/c/f/b/r;->j:Lcom/viber/jni/controller/PhoneController;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/s;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/viber/jni/controller/PhoneController;->handleRecanonizeAck(Ljava/lang/String;)Z

    .line 192
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/s;->b:Lcom/viber/voip/contacts/c/f/b/r;

    iget-object v0, v0, Lcom/viber/voip/contacts/c/f/b/r;->f:Lcom/viber/voip/contacts/c/f/b/q;

    invoke-interface {v0}, Lcom/viber/voip/contacts/c/f/b/q;->m()V

    .line 193
    return-void
.end method
