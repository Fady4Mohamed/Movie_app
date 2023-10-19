import 'package:equatable/equatable.dart';

class MovieModel extends Equatable {
	final String? title;
	final int? year;
	final String? director;
	final double? rating;
	final String? summary;
	final String? cover;
	final String? video;
	final String? duration;

	const MovieModel({
		this.title, 
		this.year, 
		this.director, 
		this.rating, 
		this.summary, 
		this.cover, 
		this.video, 
		this.duration, 
	});

	factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
				title: json['title'] as String?,
				year: json['year'] as int?,
				director: json['director'] as String?,
				rating: (json['rating'] as num?)?.toDouble(),
				summary: json['summary'] as String?,
				cover: json['cover'] as String?,
				video: json['video'] as String?,
				duration: json['duration'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'title': title,
				'year': year,
				'director': director,
				'rating': rating,
				'summary': summary,
				'cover': cover,
				'video': video,
				'duration': duration,
			};

	@override
	List<Object?> get props {
		return [
				title,
				year,
				director,
				rating,
				summary,
				cover,
				video,
				duration,
		];
	}
}
