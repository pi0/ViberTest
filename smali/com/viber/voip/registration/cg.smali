.class Lcom/viber/voip/registration/cg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/registration/co;


# instance fields
.field final synthetic a:Lcom/viber/voip/registration/RegistrationScrollView;

.field final synthetic b:Lcom/viber/voip/registration/cb;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/cb;Lcom/viber/voip/registration/RegistrationScrollView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/viber/voip/registration/cg;->b:Lcom/viber/voip/registration/cb;

    iput-object p2, p0, Lcom/viber/voip/registration/cg;->a:Lcom/viber/voip/registration/RegistrationScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/viber/voip/registration/cg;->a:Lcom/viber/voip/registration/RegistrationScrollView;

    new-instance v1, Lcom/viber/voip/registration/ch;

    invoke-direct {v1, p0}, Lcom/viber/voip/registration/ch;-><init>(Lcom/viber/voip/registration/cg;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/registration/RegistrationScrollView;->post(Ljava/lang/Runnable;)Z

    .line 355
    return-void
.end method
