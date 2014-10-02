.class Lcom/viber/voip/registration/by;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/registration/RegistrationActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/RegistrationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/viber/voip/registration/by;->a:Lcom/viber/voip/registration/RegistrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/viber/voip/registration/by;->a:Lcom/viber/voip/registration/RegistrationActivity;

    invoke-static {v0}, Lcom/viber/voip/util/hb;->a(Landroid/content/Context;)V

    .line 80
    return-void
.end method
