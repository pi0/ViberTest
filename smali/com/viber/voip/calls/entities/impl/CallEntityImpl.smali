.class public Lcom/viber/voip/calls/entities/impl/CallEntityImpl;
.super Lcom/viber/voip/messages/orm/entity/BaseEntity;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/calls/entities/CallEntity;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/viber/voip/calls/entities/impl/CallEntityImpl;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/viber/voip/calls/entities/impl/b;


# instance fields
.field private a:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 251
    new-instance v0, Lcom/viber/voip/calls/entities/impl/c;

    invoke-direct {v0}, Lcom/viber/voip/calls/entities/impl/c;-><init>()V

    sput-object v0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->b:Lcom/viber/voip/calls/entities/impl/b;

    .line 283
    new-instance v0, Lcom/viber/voip/calls/entities/impl/d;

    invoke-direct {v0}, Lcom/viber/voip/calls/entities/impl/d;-><init>()V

    sput-object v0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/entity/BaseEntity;-><init>()V

    .line 39
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 66
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/entity/BaseEntity;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->id:J

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->a:J

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->c:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->d:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->e:J

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->f:J

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->g:J

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->h:J

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->i:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->j:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->k:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->m:Z

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->n:Z

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->l:I

    .line 81
    return-void

    :cond_0
    move v0, v2

    .line 78
    goto :goto_0

    :cond_1
    move v1, v2

    .line 79
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/viber/voip/calls/entities/impl/c;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/ViberApplication;ZIZLcom/viber/voip/calls/entities/impl/g;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-virtual {p5}, Lcom/viber/voip/calls/entities/impl/g;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5}, Lcom/viber/voip/calls/entities/impl/g;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;-><init>(Ljava/lang/String;JZIZLcom/viber/voip/calls/entities/impl/g;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JZIZIILcom/viber/voip/calls/entities/impl/g;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;-><init>(Ljava/lang/String;JZIZLcom/viber/voip/calls/entities/impl/g;)V

    .line 49
    move/from16 v0, p7

    iput v0, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->j:I

    .line 50
    move/from16 v0, p8

    iput v0, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->k:I

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JZIZLcom/viber/voip/calls/entities/impl/g;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/entity/BaseEntity;-><init>()V

    .line 54
    invoke-virtual {p7}, Lcom/viber/voip/calls/entities/impl/g;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->a:J

    .line 55
    invoke-virtual {p7}, Lcom/viber/voip/calls/entities/impl/g;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->c:Ljava/lang/String;

    .line 56
    invoke-virtual {p7}, Lcom/viber/voip/calls/entities/impl/g;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->f:J

    .line 57
    invoke-virtual {p7}, Lcom/viber/voip/calls/entities/impl/g;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->g:J

    .line 58
    invoke-virtual {p7}, Lcom/viber/voip/calls/entities/impl/g;->f()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->i:I

    .line 59
    iput-boolean p6, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->m:Z

    .line 60
    iput-boolean p4, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->n:Z

    .line 61
    iput p5, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->l:I

    .line 62
    iput-wide p2, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->h:J

    .line 63
    iput-object p1, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->d:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput p1, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->i:I

    .line 171
    return-void
.end method

.method public a(J)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-wide p1, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->a:J

    .line 108
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->c:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-boolean p1, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->m:Z

    .line 180
    return-void
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput p1, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->j:I

    .line 197
    return-void
.end method

.method public b(J)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-wide p1, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->e:J

    .line 117
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->d:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->n:Z

    .line 189
    return-void
.end method

.method public c(I)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput p1, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->k:I

    .line 205
    return-void
.end method

.method public c(J)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-wide p1, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->f:J

    .line 144
    return-void
.end method

.method public compareTo(Lcom/viber/voip/messages/orm/entity/Entity;)I
    .locals 5
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 240
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;

    if-eqz v1, :cond_0

    .line 241
    check-cast p1, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;

    .line 242
    invoke-virtual {p0}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->getId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->getId()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 243
    const/4 v0, 0x0

    .line 248
    :cond_0
    :goto_0
    return v0

    .line 244
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->h()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->h()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->h()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->h()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 22
    check-cast p1, Lcom/viber/voip/messages/orm/entity/Entity;

    invoke-virtual {p0, p1}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->compareTo(Lcom/viber/voip/messages/orm/entity/Entity;)I

    move-result v0

    return v0
.end method

.method public d(I)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput p1, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->l:I

    .line 228
    return-void
.end method

.method public d(J)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-wide p1, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->g:J

    .line 153
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->a:J

    return-wide v0
.end method

.method public e(J)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-wide p1, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->h:J

    .line 162
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 275
    sget-object v0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->b:Lcom/viber/voip/calls/entities/impl/b;

    invoke-virtual {v0, p0}, Lcom/viber/voip/calls/entities/impl/b;->getContentValues(Lcom/viber/voip/messages/orm/entity/Entity;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getCreator()Lcom/viber/voip/messages/orm/creator/Creator;
    .locals 1

    .prologue
    .line 270
    sget-object v0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->b:Lcom/viber/voip/calls/entities/impl/b;

    return-object v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->f:J

    return-wide v0
.end method

.method public i()J
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->g:J

    return-wide v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->i:I

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->n:Z

    return v0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 219
    iget v0, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 2

    .prologue
    .line 305
    iget v0, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->k:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 300
    iget v1, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->j:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()Z
    .locals 2

    .prologue
    .line 310
    iget v0, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()J
    .locals 2

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->h:J

    return-wide v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->m:Z

    return v0
.end method

.method public r()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->j:I

    return v0
.end method

.method public s()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->k:I

    return v0
.end method

.method public t()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 209
    iget v1, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->i:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CallEntityImpl [nativeCallId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", canonizedNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", aggregatedHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", startReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", endReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", viberCallType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", looked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", viberCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 2

    .prologue
    .line 214
    iget v0, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->l:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    iget-wide v3, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->id:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 86
    iget-wide v3, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->a:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 87
    iget-object v0, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-wide v3, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->e:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 90
    iget-wide v3, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->f:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 91
    iget-wide v3, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->g:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 92
    iget-wide v3, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->h:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 93
    iget v0, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget v0, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-boolean v0, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->m:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-boolean v0, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->n:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget v0, p0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    return-void

    :cond_0
    move v0, v2

    .line 96
    goto :goto_0

    :cond_1
    move v1, v2

    .line 97
    goto :goto_1
.end method
