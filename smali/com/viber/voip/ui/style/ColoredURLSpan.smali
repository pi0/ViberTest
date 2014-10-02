.class public Lcom/viber/voip/ui/style/ColoredURLSpan;
.super Landroid/text/style/URLSpan;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 13
    iput p2, p0, Lcom/viber/voip/ui/style/ColoredURLSpan;->a:I

    .line 14
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    iget v0, p0, Lcom/viber/voip/ui/style/ColoredURLSpan;->a:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 31
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Landroid/text/style/URLSpan;->writeToParcel(Landroid/os/Parcel;I)V

    .line 24
    iget v0, p0, Lcom/viber/voip/ui/style/ColoredURLSpan;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    return-void
.end method
