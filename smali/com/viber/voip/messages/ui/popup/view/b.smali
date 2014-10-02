.class Lcom/viber/voip/messages/ui/popup/view/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/viber/voip/stickers/c/a;

.field public b:I

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/widget/ImageView;

.field public e:Lcom/viber/voip/stickers/ui/b;


# direct methods
.method private constructor <init>(Lcom/viber/voip/stickers/c/a;ILandroid/widget/ImageView;Landroid/widget/ImageView;Lcom/viber/voip/stickers/ui/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/viber/voip/messages/ui/popup/view/b;->a:Lcom/viber/voip/stickers/c/a;

    .line 146
    iput p2, p0, Lcom/viber/voip/messages/ui/popup/view/b;->b:I

    .line 147
    iput-object p3, p0, Lcom/viber/voip/messages/ui/popup/view/b;->c:Landroid/widget/ImageView;

    .line 148
    iput-object p4, p0, Lcom/viber/voip/messages/ui/popup/view/b;->d:Landroid/widget/ImageView;

    .line 149
    iput-object p5, p0, Lcom/viber/voip/messages/ui/popup/view/b;->e:Lcom/viber/voip/stickers/ui/b;

    .line 150
    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/stickers/c/a;ILandroid/widget/ImageView;Landroid/widget/ImageView;Lcom/viber/voip/stickers/ui/b;Lcom/viber/voip/messages/ui/popup/view/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-direct/range {p0 .. p5}, Lcom/viber/voip/messages/ui/popup/view/b;-><init>(Lcom/viber/voip/stickers/c/a;ILandroid/widget/ImageView;Landroid/widget/ImageView;Lcom/viber/voip/stickers/ui/b;)V

    return-void
.end method
