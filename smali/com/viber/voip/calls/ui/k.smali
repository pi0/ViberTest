.class Lcom/viber/voip/calls/ui/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lcom/viber/voip/calls/ui/PhoneFragment;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private e:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 896
    const-class v0, Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/viber/voip/calls/ui/k;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/viber/voip/calls/ui/PhoneFragment;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 900
    iput-object p1, p0, Lcom/viber/voip/calls/ui/k;->b:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 918
    new-instance v0, Lcom/viber/voip/calls/ui/l;

    invoke-direct {v0, p0}, Lcom/viber/voip/calls/ui/l;-><init>(Lcom/viber/voip/calls/ui/k;)V

    iput-object v0, p0, Lcom/viber/voip/calls/ui/k;->e:Ljava/lang/Runnable;

    .line 901
    sget-boolean v0, Lcom/viber/voip/calls/ui/k;->a:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 902
    :cond_0
    iput-object p2, p0, Lcom/viber/voip/calls/ui/k;->c:Ljava/lang/String;

    .line 903
    iput p3, p0, Lcom/viber/voip/calls/ui/k;->d:I

    .line 904
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/calls/ui/k;)I
    .locals 1
    .parameter

    .prologue
    .line 896
    iget v0, p0, Lcom/viber/voip/calls/ui/k;->d:I

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 908
    iget-object v0, p0, Lcom/viber/voip/calls/ui/k;->b:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-static {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->b(Lcom/viber/voip/calls/ui/PhoneFragment;)Lcom/viber/voip/widget/PhoneTypeField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/widget/PhoneTypeField;->getPhoneFieldEditable()Landroid/text/Editable;

    move-result-object v0

    .line 909
    iget-object v1, p0, Lcom/viber/voip/calls/ui/k;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 910
    iget-object v0, p0, Lcom/viber/voip/calls/ui/k;->b:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-static {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->c(Lcom/viber/voip/calls/ui/PhoneFragment;)V

    .line 911
    iget-object v0, p0, Lcom/viber/voip/calls/ui/k;->b:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-static {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->b(Lcom/viber/voip/calls/ui/PhoneFragment;)Lcom/viber/voip/widget/PhoneTypeField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/widget/PhoneTypeField;->requestFocus()Z

    .line 914
    iget-object v0, p0, Lcom/viber/voip/calls/ui/k;->b:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-static {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->g(Lcom/viber/voip/calls/ui/PhoneFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/calls/ui/k;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 915
    iget-object v0, p0, Lcom/viber/voip/calls/ui/k;->b:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-static {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->g(Lcom/viber/voip/calls/ui/PhoneFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/calls/ui/k;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 916
    return-void
.end method
