.class Lcom/viber/voip/contacts/c/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/b/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/b/a;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/viber/voip/contacts/c/b/c;->a:Lcom/viber/voip/contacts/c/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialized(Lcom/viber/jni/controller/PhoneController;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/viber/voip/contacts/c/b/c;->a:Lcom/viber/voip/contacts/c/b/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/b/a;->a(Lcom/viber/voip/contacts/c/b/a;)V

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/b/c;->a:Lcom/viber/voip/contacts/c/b/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/b/a;->b(Lcom/viber/voip/contacts/c/b/a;)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/jni/PhoneControllerWrapper;->removeInitializedListener(Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;)V

    .line 69
    return-void

    .line 66
    :cond_0
    invoke-static {}, Lcom/viber/voip/block/i;->a()V

    goto :goto_0
.end method
