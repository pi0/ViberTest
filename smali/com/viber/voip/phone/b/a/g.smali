.class Lcom/viber/voip/phone/b/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lcom/viber/voip/phone/b/a/e;

.field private final c:Ljava/lang/String;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const-class v0, Lcom/viber/voip/phone/b/a/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/viber/voip/phone/b/a/g;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/viber/voip/phone/b/a/e;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/viber/voip/phone/b/a/g;->b:Lcom/viber/voip/phone/b/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    sget-boolean v0, Lcom/viber/voip/phone/b/a/g;->a:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 96
    :cond_0
    iput-object p2, p0, Lcom/viber/voip/phone/b/a/g;->c:Ljava/lang/String;

    .line 97
    iput p3, p0, Lcom/viber/voip/phone/b/a/g;->d:I

    .line 98
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/g;->b:Lcom/viber/voip/phone/b/a/e;

    invoke-static {v0}, Lcom/viber/voip/phone/b/a/e;->a(Lcom/viber/voip/phone/b/a/e;)Lcom/viber/voip/ui/ViberEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ui/ViberEditText;->requestFocus()Z

    .line 103
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/g;->b:Lcom/viber/voip/phone/b/a/e;

    invoke-static {v0}, Lcom/viber/voip/phone/b/a/e;->a(Lcom/viber/voip/phone/b/a/e;)Lcom/viber/voip/ui/ViberEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ui/ViberEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/viber/voip/phone/b/a/g;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 106
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/g;->b:Lcom/viber/voip/phone/b/a/e;

    invoke-static {v0}, Lcom/viber/voip/phone/b/a/e;->b(Lcom/viber/voip/phone/b/a/e;)Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/phone/b/a/g;->d:I

    invoke-interface {v0, v1}, Lcom/viber/voip/sound/ISoundService;->sendDTMFTone(I)V

    .line 107
    return-void
.end method
