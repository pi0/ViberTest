.class Lcom/viber/voip/messages/ui/bq;
.super Landroid/graphics/drawable/LayerDrawable;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/ListViewWithLeftScrollBar;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/ListViewWithLeftScrollBar;[Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/viber/voip/messages/ui/bq;->a:Lcom/viber/voip/messages/ui/ListViewWithLeftScrollBar;

    invoke-direct {p0, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public setBounds(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    sub-int v0, p3, p1

    .line 115
    const/4 v1, 0x0

    .line 116
    add-int/2addr v0, v1

    .line 118
    invoke-super {p0, v1, p2, v0, p4}, Landroid/graphics/drawable/LayerDrawable;->setBounds(IIII)V

    .line 119
    return-void
.end method
