.class Lcom/viber/voip/phone/b/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/phone/b/k;


# direct methods
.method constructor <init>(Lcom/viber/voip/phone/b/k;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/viber/voip/phone/b/l;->a:Lcom/viber/voip/phone/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/viber/voip/phone/b/l;->a:Lcom/viber/voip/phone/b/k;

    invoke-static {v0}, Lcom/viber/voip/phone/b/k;->a(Lcom/viber/voip/phone/b/k;)Lcom/viber/voip/phone/b/o;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/phone/b/o;->e:Lcom/viber/voip/phone/h;

    invoke-virtual {v0}, Lcom/viber/voip/phone/h;->performClick()Z

    .line 176
    const/4 v0, 0x1

    return v0
.end method
