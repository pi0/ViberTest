.class Lcom/viber/voip/registration/am;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/registration/ai;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/ai;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/viber/voip/registration/am;->a:Lcom/viber/voip/registration/ai;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/viber/voip/registration/am;->a:Lcom/viber/voip/registration/ai;

    invoke-virtual {v0}, Lcom/viber/voip/registration/ai;->b()V

    .line 203
    return-void
.end method
