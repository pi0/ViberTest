.class Lcom/viber/voip/registration/ch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/registration/cg;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/cg;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/viber/voip/registration/ch;->a:Lcom/viber/voip/registration/cg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/viber/voip/registration/ch;->a:Lcom/viber/voip/registration/cg;

    iget-object v0, v0, Lcom/viber/voip/registration/cg;->a:Lcom/viber/voip/registration/RegistrationScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/viber/voip/registration/RegistrationScrollView;->fullScroll(I)Z

    .line 353
    return-void
.end method
