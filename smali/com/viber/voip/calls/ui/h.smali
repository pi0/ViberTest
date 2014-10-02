.class Lcom/viber/voip/calls/ui/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/calls/ui/i;

.field final synthetic b:Z

.field final synthetic c:Lcom/viber/voip/calls/ui/PhoneFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/calls/ui/PhoneFragment;Lcom/viber/voip/calls/ui/i;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1078
    iput-object p1, p0, Lcom/viber/voip/calls/ui/h;->c:Lcom/viber/voip/calls/ui/PhoneFragment;

    iput-object p2, p0, Lcom/viber/voip/calls/ui/h;->a:Lcom/viber/voip/calls/ui/i;

    iput-boolean p3, p0, Lcom/viber/voip/calls/ui/h;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/viber/voip/calls/ui/h;->c:Lcom/viber/voip/calls/ui/PhoneFragment;

    iget-object v1, p0, Lcom/viber/voip/calls/ui/h;->a:Lcom/viber/voip/calls/ui/i;

    iget-boolean v2, p0, Lcom/viber/voip/calls/ui/h;->b:Z

    invoke-static {v0, v1, v2}, Lcom/viber/voip/calls/ui/PhoneFragment;->b(Lcom/viber/voip/calls/ui/PhoneFragment;Lcom/viber/voip/calls/ui/i;Z)V

    .line 1082
    return-void
.end method
