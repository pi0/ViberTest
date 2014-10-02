.class public abstract Lcom/viber/voip/messages/conversation/a/a/b/a/b;
.super Lcom/viber/voip/ui/b/a/a;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/conversation/a/a/b/a;


# instance fields
.field protected A:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field protected B:Z

.field private final D:I

.field private final E:I

.field private final F:I

.field private final G:I

.field private final H:I

.field private final I:I

.field private final J:I

.field private final K:I

.field private final L:I

.field private final M:I

.field private final N:I

.field private final O:I

.field private final P:I

.field private final Q:I

.field private final R:I

.field private final S:I

.field private final T:I

.field private final U:I

.field private final V:I

.field private final W:I

.field private final X:I

.field private Y:Landroid/util/DisplayMetrics;

.field private final Z:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected a:I

.field private final aa:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ab:I

.field private final ac:Landroid/content/res/ColorStateList;

.field private final ad:I

.field private final ae:Ljava/lang/String;

.field private final af:Ljava/lang/String;

.field private ag:Lcom/viber/voip/messages/conversation/a/a/b/a/a;

.field private ah:J

.field private ai:J

.field private aj:Z

.field private ak:Z

.field protected final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field protected final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field protected final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:Landroid/content/res/ColorStateList;

.field protected j:Landroid/graphics/drawable/Drawable;

.field protected k:I

.field protected l:I

.field protected m:I

.field protected n:I

.field protected o:I

.field protected p:I

.field protected q:I

.field protected r:Landroid/graphics/drawable/Drawable;

.field protected s:I

.field protected t:I

.field protected u:I

.field protected v:I

.field protected w:I

.field protected x:I

.field protected y:I

.field protected z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x1

    .line 113
    invoke-direct {p0, p1}, Lcom/viber/voip/ui/b/a/a;-><init>(Landroid/content/Context;)V

    .line 99
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->A:Landroid/util/SparseArray;

    .line 106
    iput-wide v3, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->ah:J

    .line 107
    iput-wide v3, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->ai:J

    .line 109
    iput-boolean v2, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->aj:Z

    .line 110
    iput-boolean v2, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->ak:Z

    .line 115
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->Y:Landroid/util/DisplayMetrics;

    .line 116
    invoke-static {p1}, Lcom/viber/voip/util/gl;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->B:Z

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0128

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->D:I

    .line 120
    const/high16 v0, 0x4080

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->E:I

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->F:I

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->G:I

    .line 123
    const/high16 v0, 0x40c0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->H:I

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->I:I

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0107

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->J:I

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a012b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->K:I

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a012c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->L:I

    .line 129
    const/high16 v0, 0x4100

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->M:I

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->N:I

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->O:I

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->P:I

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->Q:I

    .line 137
    const/high16 v0, 0x3f80

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->R:I

    .line 138
    const/high16 v0, 0x4040

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->S:I

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->T:I

    .line 141
    const/high16 v0, 0x430c

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->U:I

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->V:I

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->W:I

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0238

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->X:I

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0126

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->ab:I

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->ad:I

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->ac:Landroid/content/res/ColorStateList;

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c078f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->ae:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0420

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->af:Ljava/lang/String;

    .line 154
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->b:Landroid/util/SparseArray;

    .line 155
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->c:Landroid/util/SparseArray;

    .line 157
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->d:Landroid/util/SparseArray;

    .line 159
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->Z:Landroid/util/SparseArray;

    .line 160
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->aa:Landroid/util/SparseArray;

    .line 162
    new-instance v0, Lcom/viber/voip/messages/conversation/a/a/b/a/a;

    invoke-direct {v0, p1}, Lcom/viber/voip/messages/conversation/a/a/b/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->ag:Lcom/viber/voip/messages/conversation/a/a/b/a/a;

    .line 164
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->q()V

    .line 165
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->r()V

    .line 167
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->s()V

    .line 168
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->t()V

    .line 169
    return-void
.end method

.method private q()V
    .locals 5

    .prologue
    .line 185
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c03c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->Z:Landroid/util/SparseArray;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 187
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->Z:Landroid/util/SparseArray;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->C:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c03bf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 188
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->Z:Landroid/util/SparseArray;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->C:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c03be

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 189
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->Z:Landroid/util/SparseArray;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->C:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c03c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 190
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->Z:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 191
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->Z:Landroid/util/SparseArray;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 192
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->Z:Landroid/util/SparseArray;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 193
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->Z:Landroid/util/SparseArray;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 194
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->Z:Landroid/util/SparseArray;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 195
    return-void
.end method

.method private r()V
    .locals 5

    .prologue
    .line 199
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c03c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->C:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c03c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 201
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->C:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c03c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 203
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->aa:Landroid/util/SparseArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 204
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->aa:Landroid/util/SparseArray;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->aa:Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 206
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->aa:Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->aa:Landroid/util/SparseArray;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 209
    return-void
.end method

.method private s()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 212
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 214
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->c:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->C:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020089

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 215
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->c:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->C:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02008d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 217
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->c:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->C:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02008f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 218
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 219
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->c:Landroid/util/SparseArray;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 220
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->c:Landroid/util/SparseArray;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 221
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->c:Landroid/util/SparseArray;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 222
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->c:Landroid/util/SparseArray;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 226
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->b:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->C:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020088

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 227
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->b:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->C:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02008c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 228
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->b:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->C:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02008e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 229
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 230
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->b:Landroid/util/SparseArray;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 231
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->b:Landroid/util/SparseArray;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 232
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->b:Landroid/util/SparseArray;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 233
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->b:Landroid/util/SparseArray;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 234
    return-void
.end method

.method private t()V
    .locals 4

    .prologue
    .line 237
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->d:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 238
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->d:Landroid/util/SparseArray;

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->B:Z

    if-eqz v0, :cond_0

    const v0, 0x7f02008b

    :goto_0
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 240
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->d:Landroid/util/SparseArray;

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->B:Z

    if-eqz v0, :cond_1

    const v0, 0x7f020089

    :goto_1
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 242
    return-void

    .line 238
    :cond_0
    const v0, 0x7f02008a

    goto :goto_0

    .line 240
    :cond_1
    const v0, 0x7f020088

    goto :goto_1
.end method


# virtual methods
.method public a(I)I
    .locals 0
    .parameter

    .prologue
    .line 489
    if-eqz p1, :cond_0

    :goto_0
    return p1

    :cond_0
    iget p1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->U:I

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/messages/conversation/a/a/a;)I
    .locals 1
    .parameter

    .prologue
    .line 382
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->ag:Lcom/viber/voip/messages/conversation/a/a/b/a/a;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/a/a/b/a/a;->c(Lcom/viber/voip/messages/conversation/a/a/a;)I

    move-result v0

    return v0
.end method

.method public a(J)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-wide p1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->ah:J

    .line 256
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 499
    iput-boolean p1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->aj:Z

    .line 500
    return-void
.end method

.method public b(Lcom/viber/voip/messages/conversation/a/a/a;)I
    .locals 1
    .parameter

    .prologue
    .line 388
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->ag:Lcom/viber/voip/messages/conversation/a/a/b/a/a;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/a/a/b/a/a;->d(Lcom/viber/voip/messages/conversation/a/a/a;)I

    move-result v0

    return v0
.end method

.method public b(J)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-wide p1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->ai:J

    .line 266
    return-void
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 509
    iput-boolean p1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->ak:Z

    .line 510
    return-void
.end method

.method public c(Lcom/viber/voip/messages/conversation/a/a/a;)I
    .locals 1
    .parameter

    .prologue
    .line 377
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->ag:Lcom/viber/voip/messages/conversation/a/a/b/a/a;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/a/a/b/a/a;->e(Lcom/viber/voip/messages/conversation/a/a/a;)I

    move-result v0

    return v0
.end method

.method public d(Lcom/viber/voip/messages/conversation/a/a/a;)I
    .locals 1
    .parameter

    .prologue
    .line 393
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->ag:Lcom/viber/voip/messages/conversation/a/a/b/a/a;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/a/a/b/a/a;->f(Lcom/viber/voip/messages/conversation/a/a/a;)I

    move-result v0

    return v0
.end method

.method public e(Lcom/viber/voip/messages/conversation/a/a/a;)I
    .locals 1
    .parameter

    .prologue
    .line 398
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->ag:Lcom/viber/voip/messages/conversation/a/a/b/a/a;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/a/a/b/a/a;->g(Lcom/viber/voip/messages/conversation/a/a/a;)I

    move-result v0

    return v0
.end method

.method public f(Lcom/viber/voip/messages/conversation/a/a/a;)I
    .locals 1
    .parameter

    .prologue
    .line 404
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->ag:Lcom/viber/voip/messages/conversation/a/a/b/a/a;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/a/a/b/a/a;->h(Lcom/viber/voip/messages/conversation/a/a/a;)I

    move-result v0

    return v0
.end method

.method public g(Lcom/viber/voip/messages/conversation/a/a/a;)I
    .locals 1
    .parameter

    .prologue
    .line 449
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->ag:Lcom/viber/voip/messages/conversation/a/a/b/a/a;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/a/a/b/a/a;->i(Lcom/viber/voip/messages/conversation/a/a/a;)I

    move-result v0

    return v0
.end method

.method public g()V
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->Y:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 174
    iget v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->s:I

    sub-int v1, v0, v1

    iget v2, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->t:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->v:I

    .line 175
    iget v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->v:I

    iget v2, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->X:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->v:I

    .line 177
    iget v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->u:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    iput v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->w:I

    .line 179
    iget v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->V:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->x:I

    .line 180
    iget v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->x:I

    iget v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->W:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->x:I

    .line 181
    return-void
.end method

.method public h(Lcom/viber/voip/messages/conversation/a/a/a;)I
    .locals 1
    .parameter

    .prologue
    .line 366
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->ag:Lcom/viber/voip/messages/conversation/a/a/b/a/a;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/a/a/b/a/a;->a(Lcom/viber/voip/messages/conversation/a/a/a;)I

    move-result v0

    return v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 250
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->ah:J

    return-wide v0
.end method

.method public i(Lcom/viber/voip/messages/conversation/a/a/a;)I
    .locals 1
    .parameter

    .prologue
    .line 372
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->ag:Lcom/viber/voip/messages/conversation/a/a/b/a/a;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/a/a/b/a/a;->b(Lcom/viber/voip/messages/conversation/a/a/a;)I

    move-result v0

    return v0
.end method

.method public i()J
    .locals 2

    .prologue
    .line 260
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->ai:J

    return-wide v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->E:I

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->v:I

    return v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->w:I

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->af:Ljava/lang/String;

    return-object v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->aj:Z

    return v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->ak:Z

    return v0
.end method
