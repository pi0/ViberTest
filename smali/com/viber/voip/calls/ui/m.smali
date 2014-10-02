.class Lcom/viber/voip/calls/ui/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;


# direct methods
.method constructor <init>(Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/viber/voip/calls/ui/m;->a:Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/viber/voip/calls/ui/m;->a:Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->d(Ljava/lang/Object;)V

    .line 104
    return-void
.end method
